# Load the http package for making API requests
package require http

# Set the base URL for the NVD API
set base_url "https://services.nvd.nist.gov/rest/json/cves/1.0"

# Function to make an API request and return the JSON response
proc get_vulns {params} {
    global base_url
    # Construct the full API URL with the given params
    set query [http::formatQuery $params]
    set url "${base_url}?${query}"

    # Make the API request and get the response
    set response [::http::geturl $url]

    # Parse the JSON response and return the vulnerability data
    return [::json::json2dict [::http::data $response]]
}

# Function to display the vulnerability data in the channel
proc show_vulns {channel vulns} {
    # Loop through the vulnerability data and format it as a message
    set msg "Recent CVEs:"
    foreach vuln $vulns("result")("CVE_Items") {
        set msg "${msg} ${vuln("cve")("CVE_data_meta")("ID")}"
    }

    # Send the message to the channel
    putnow "PRIVMSG ${channel} :${msg}"
}

# Command to get and display the latest vulnerability updates
bind pub - "!vulns" {
    # Set the default parameters for the API request
    set default_params {
        "pubStartDate" [clock format [clock subtract [clock seconds] 604800] -format "%Y-%m-%dT%H:%MZ"]
        "resultsPerPage" 10
        "cvssV3Severity" "HIGH"
        ;# Add any other desired parameters here, such as "cveId", "vendorName", "productName", etc.
    }

    # Get the vulnerability data from the NVD API
    set vulns [get_vulns $default_params]

    # Display the vulnerability data in the channel
    show_vulns $chan $vulns
}
