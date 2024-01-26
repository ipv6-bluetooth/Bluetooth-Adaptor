# Get Bluetooth network adapter information
$bluetoothAdapter = Get-NetAdapter | Where-Object { $_.Name -like "*Bluetooth*"}
$ipAddresses = Get-NetIPAddress | Where-Object { $_.Name -like "*Bluetooth*"}

if ($bluetoothAdapter -ne $null) {
    # Display the adapter information
    Write-Host "Bluetooth Adapter:"
    Write-Host "  Interface Index: $($bluetoothAdapter.InterfaceIndex)"
    Write-Host "  Family: $(If ($ipAddress.IPAddress -match '^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$') {'IPv4'} Else {'IPv6'})"
    Write-Host "  Name: $($bluetoothAdapter.Name)"
    Write-Host "  Status: $($bluetoothAdapter.Status)"
} else {
    Write-Host "Bluetooth Adapter not found."
}
