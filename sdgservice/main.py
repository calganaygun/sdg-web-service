from fastapi import FastAPI
from .sdg_list import goals as sdg_list

app = FastAPI()

@app.get("/goal/{goal_no}")
async def get_goal_name(goal_no: int):
    if goal_no < 18:
        return {
            "no": goal_no, 
            "name": sdg_list[goal_no - 1]
        }
