# Array Sample

$this = $MyInvocation.MyCommand.Path
Write-Output "Executing $this"

# Create an Array of String
$cities = "Boston", "NewYork", "Chicago", "Miami", "Washington", "LasVegas", "Houstan"
# Display Array of cities
Write-Host "================Cities Array==================="
Write-Host $cities

# Another way to create array
$days = @("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday","Friday", "Saturday")
# Display Array of day
Write-Host "================Days Array==================="
Write-Host $days

# Retrieve Second ellement of days array (Array is zero based)
Write-Host "================Second element Days Array==================="
Write-Host $days[1]
Write-Host "================Third element Days Array==================="
Write-Host $cities[3]

# Get type of array
Write-Host "================Type of Days Array==================="
Write-Host $days.GetType()
Write-Host "================Type of Cities Array==================="
Write-Host $cities.GetType()

# Get count of array
Write-Host "================Count of Days Array==================="
Write-Host $days.Count
Write-Host $days.Length
Write-Host "================Count of Cities Array==================="
Write-Host $cities.Count
Write-Host $cities.Length

# Create empty array, this way we can create empty array
$emptyArray = @()
Write-Host 'Empty Array Length - ' $emptyArray.Length

# Shortcut to create a array of random number. 
# Put the first value followed by two dots/periods and then last value
$rangeArray = 1..30
Write-Host $rangeArray

$rangeArray2 = 50..1
Write-Host $rangeArray2

# Check element exists. 
Write-Host $rangeArray.Contains(3)


Write-Output "Completed $this"


