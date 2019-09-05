import Routing
import Vapor

/// Register your application's routes here.
///
/// [Learn More →](https://docs.vapor.codes/3.0/getting-started/structure/#routesswift)
public func routes(_ router: Router) throws {
    router.get("hello") { req in
        return "Hello, world!"
    }

    router.get("test") { req in
        return "This is a test"
    }

    router.get("/") { req in
        return try req.view().render("index.html")
    }
}
