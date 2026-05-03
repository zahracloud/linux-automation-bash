# Colors
GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
NC='\033[0m'

# Status Functions
print_success()
{
	echo -e "${GREEN}[OK] $1${NC}"
}
print_error()
{
	echo -e "${RED}[ERROR] $1${NC}"
}

print_header()
{
	echo -e "${BLUE}-------- $1 --------${NC}"
}
