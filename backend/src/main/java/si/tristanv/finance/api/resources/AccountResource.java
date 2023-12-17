package si.tristanv.finance.api.resources;

import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import si.tristanv.finance.api.objects.account.LoginRequest;
import si.tristanv.finance.api.objects.account.RegisterRequest;

@Path("/account")
public interface AccountResource
{

    @POST
    @Path("/register")
    void register(RegisterRequest registerRequest);

    @POST
    @Path("/login")
    void login(LoginRequest loginRequest);

}
