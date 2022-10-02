#ifndef PL_REMOTEMEMREF_H
#define PL_REMOTEMEMREF_H

#include "mlir/IR/Dialect.h"

namespace mlir {
class Type;
namespace rmem {
class RemoteMemDialect;
class RemoteMemRefType;
Type getRawTypeFromRemotedType(Type type);

}
}

#include "Dialect/RemoteMemOpsDialect.h.inc"


#endif
