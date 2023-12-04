package si.tristanv.finance.api.resources;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import si.tristanv.finance.dtos.ExpenseDto;

import java.util.List;

@Path("/expenses")
public interface ExpensesResource
{

    @GET
    @Path("/all")
    @Produces(MediaType.APPLICATION_JSON)
    public List<ExpenseDto> addExpense();

}
