response=$(curl -s http://localhost:8081)
if [[ $response == *"date"* && $response == *"time"* ]]; then
    echo "Test passed"
else
    echo "Test failed"
fi
