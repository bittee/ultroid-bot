async def autopilot():
    from .. import asst, udB, ultroid_bot

    if udB.get_key("INIT_DEPLOY") or Redis:  # Detailed Message for Deployment
        LOGS.info("Deploying Ultroid UserBot!")
        return
    LOGS.info("Initialising...")
    udB.set_key("INIT_DEPLOY", "Done")
    LOGS.info("Creating a Log Channel for You!")
    try:
        channel = await ultroid_bot(
            CreateChannelRequest(
                title="My Ultroid Logs",
                about="Logs for My Ultroid Bot",
                megagroup=True,
            ),
        )
        chat_id = channel.chats[0].id
        if not str(chat_id).startswith("-100"):
            chat_id = int("-100" + str(chat_id))
        udB.set_key("LOG_CHANNEL", chat_id)
        LOGS.info("Log Channel Created Successfully!")
    except Exception as er:
        LOGS.error("Error while creating Log Channel: " + str(er)) 