
import discord
from discord.ext import commands
from discord import app_commands  
import os
import asyncio


TOKEN = 'paste your discord bot token here'
intents = discord.Intents.default()
intents.message_content = True 

bot = commands.Bot(command_prefix='!', intents=intents)

@bot.event
async def on_ready():
    try:
        synced = await bot.tree.sync()
        print(f'Synced {len(synced)} command(s).')
    except Exception as e:
        print(f"Error syncing commands: {e}")
    print(f'Secure Bot logged in as {bot.user}')

@bot.tree.command(name="ping", description="Ping an IP address safely")
@app_commands.describe(ip_address="The IP to ping")
async def ping(interaction: discord.Interaction, ip_address: str):
    
    blacklist = [
        "rm ", "rm;", "mv ", "mv;", "chmod", ">", 
        "wget", "curl", "shutdow", "reboot"
    ]
    
    if any(bad_word in ip_address for bad_word in blacklist):
        await interaction.response.send_message("🚫 **Illegal Action:** Destructive commands are not allowed.", ephemeral=True)
        await asyncio.sleep(5)
        await interaction.delete_original_response()
        return
    # ----------------------------------

    await interaction.response.send_message(f"Pinging {ip_address}...", ephemeral=True)
    
    command = f"ping -c 4 {ip_address}"
    
    try:
        process = await asyncio.create_subprocess_shell(
            command,
            stdout=asyncio.subprocess.PIPE,
            stderr=asyncio.subprocess.PIPE
        )
        
        stdout, stderr = await process.communicate()
        output = stdout.decode() + stderr.decode()
            
        if not output:
            output = "No output returned."
            
        await interaction.edit_original_response(content=f"```\n{output}\n```")
        
        await asyncio.sleep(5)
        
        await interaction.delete_original_response()

    except Exception as e:
        await interaction.edit_original_response(content=f"Error: {e}")


@bot.tree.command(name="dns", description="Resolve a domain to IP")
@app_commands.describe(domain="Domain to resolve")
async def dns(interaction: discord.Interaction, domain: str):
    import socket
    try:
        ip = socket.gethostbyname(domain)
        await interaction.response.send_message(f"🔎 `{domain}` resolves to `{ip}`")
    except Exception as e:
        await interaction.response.send_message(f"❌ Failed to resolve: {e}")


@bot.tree.command(name="traceroute", description="Run traceroute on a host")
@app_commands.describe(target="Host to trace")
async def traceroute(interaction: discord.Interaction, target: str):

    await interaction.response.send_message(f"Tracing `{target}`...")

    process = await asyncio.create_subprocess_exec(
        "traceroute", "-m", "10", target,
        stdout=asyncio.subprocess.PIPE,
        stderr=asyncio.subprocess.PIPE
    )

    stdout, stderr = await process.communicate()
    output = (stdout.decode() + stderr.decode())[:1800]

    if not output:
        output = "No output."

    await interaction.edit_original_response(content=f"```\n{output}\n```")


@bot.tree.command(name="whois_real", description="Perform a real WHOIS lookup")
@app_commands.describe(target="Domain or IP")
async def whois_real(interaction: discord.Interaction, target: str):

    await interaction.response.send_message(f"Running WHOIS on `{target}`...")

    process = await asyncio.create_subprocess_exec(
        "whois", target,
        stdout=asyncio.subprocess.PIPE,
        stderr=asyncio.subprocess.PIPE
    )

    stdout, stderr = await process.communicate()
    output = (stdout.decode() + stderr.decode())[:1800]

    if not output:
        output = "No output."

    await interaction.edit_original_response(content=f"```\n{output}\n```")




bot.run(TOKEN)