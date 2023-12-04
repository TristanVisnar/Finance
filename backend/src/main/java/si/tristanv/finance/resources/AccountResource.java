package si.tristanv.finance.resources;

import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;

@Path("/account")
public interface AccountResource
{

    @POST
    @Path("/register")
    void register();

    @POST
    @Path("/login")
    void login();

}
