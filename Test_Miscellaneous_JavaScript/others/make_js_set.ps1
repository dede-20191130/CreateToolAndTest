Param(
    $type = "js"
)

$currentPath = Resolve-Path .
$currentDate = (gt)
$combinedPath = (Join-Path  ./  $currentDate)

if (Test-Path $combinedPath)
{
    exit;
}

mkdir (gt)

mkdir (Join-Path $combinedPath "/set01")

cd (Join-Path $combinedPath "/set01")

if ($type -eq "js")
{
    1..20 | %{ ni (("{0:00}" -f $_) + ".js") }
}
else
{
    1..20 | %{ ni ("h" + ("{0:00}" -f $_) + ".html") }

}

cd $currentPath