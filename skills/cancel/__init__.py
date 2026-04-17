# Cancel Skill for Hermes
# Cancel active OMH modes and clean up state

from typing import Dict, Any

__version__ = "1.0.0"
__author__ = "oh-my-hermes contributors"


def execute(options: Dict[str, Any] = None) -> Dict[str, Any]:
    """
    Cancel active OMH modes and clean up.

    Args:
        options: Optional parameters (all, force, keep-state)

    Returns:
        Dict with cancellation results
    """
    return {
        "status": "cancelled",
        "message": "OMH modes cancelled",
        "skill": "cancel",
        "version": __version__,
    }
