# Define the path to the CSV file
$sourceFilePath = "/Users/ash/WDE-Assignment-01/wde-assign01.csv"  # Change path as needed

# Create initial data to write to the CSV
$data = @(
    [PSCustomObject]@{name="hi"; description="don't settle"; system="sight"; redundant="dumb"}
    [PSCustomObject]@{name="hello"; description="why not"; system="settle"; redundant="settle"}
    [PSCustomObject]@{name="this"; description="just fails"; system="why?"; redundant="settle"}
)

# Step 1: Write data to CSV
$data | Export-Csv -Path $sourceFilePath -NoTypeInformation
Write-Host "Source CSV file created at $sourceFilePath"


