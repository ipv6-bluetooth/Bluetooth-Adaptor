# Get Bluetooth network adapter information
$bluetoothAdapter = Get-NetAdapter | Where-Object { $_.Name -like "*Bluetooth*"}
$ipAddresses = Get-NetIPAddress | Where-Object { $_.Name -like "*Bluetooth*"}

if ($bluetoothAdapter -ne $null) {
    # Enable the Bluetooth adapter
    Write-Host "Family: $(If ($ipAddress.IPAddress -match '^(?:[0-9]{1,3}\.){3}[0-9]{1,3}$') {'IPv4'} Else {'IPv6'})"
    Enable-NetAdapter -Name $bluetoothAdapter.Name
    Write-Host "Bluetooth Adapter enabled."
} else {
    Write-Host "Bluetooth Adapter not found."
}
