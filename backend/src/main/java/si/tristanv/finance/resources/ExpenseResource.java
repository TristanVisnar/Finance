package si.tristanv.finance.resources;

import jakarta.ws.rs.GET;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.MediaType;
import si.tristanv.finance.dtos.ExpenseDto;

@Path("/expense")
public interface ExpenseResource
{
    @POST
    @Path("/add")
    @Produces(MediaType.APPLICATION_JSON)
    public Integer addExpense(ExpenseDto expenseDto);



}
