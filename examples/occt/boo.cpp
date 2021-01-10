#include <GC_MakeSegment.hxx>
#include <gp_Pnt.hxx>
#include <Standard_Failure.hxx>

int main() {
  try {
    gp_Pnt a(0, 0, 0);
    gp_Pnt b(1, 0, 0);

    Handle(Geom_TrimmedCurve) edge = GC_MakeSegment(a, b);
  }
  catch (const Standard_Failure& e) {
    std::cout << e.GetMessageString() << std::endl;
    return 1;
  }
}