#include <stddef.h> // for size_t
#include <xatlas/xatlas.h>

#include <memory>

int main() {
    std::shared_ptr<xatlas::Atlas> atlas = std::make_shared<xatlas::Atlas>();
}
