import Enfermedades.*
import enfermos.*

object fixture1 {
	method malariaLogan(){
		return new EnfermedadInfecciosa(500)
	}

	method otitisLogan(){
		return new EnfermedadInfecciosa(100)
	}
	method lupusLogan(){
		return new EnfermedadAutoinmune(10000)
	}
	method enfermedadesLogan(){
		return #{self.malariaLogan(),self.otitisLogan(),self.lupusLogan()}
	}

	method malariaFrank(){
		return new EnfermedadInfecciosa(800)
	}

	method otitisFrank(){
		return new EnfermedadInfecciosa(100)
	}
	method lupusFrank(){
		return new EnfermedadAutoinmune(10000)
	}
}