terraform {
    backend "remote" {
        organization = "pacina" 
        
        workspaces {
            name = "pacina-test"
        }
    }
}