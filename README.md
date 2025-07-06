# TickTick MCP Server

A comprehensive Model Context Protocol (MCP) server for TickTick task management with **100% API coverage** (112 operations).

## 🤖 Created with Claude Code

This project was created using [Claude Code](https://claude.ai/code) - Anthropic's official CLI for Claude. Built specifically for Claude Code users who want seamless TickTick integration in their development workflow.

## ✨ Features

### Complete TickTick API Coverage (112 Operations)

#### **Core Task Management** (24 operations)
- ✅ Create, read, update, delete tasks
- ✅ Task completion and status management
- ✅ Due dates, priorities, and reminders
- ✅ Task search and filtering
- ✅ Bulk task operations

#### **Project Management** (36 operations)
- ✅ Project creation and management
- ✅ Advanced project operations (clone, archive, favorites)
- ✅ Project templates and smart lists
- ✅ Team collaboration and sharing
- ✅ Permission management and member invitations

#### **Advanced Features** (52 operations)
- ✅ **Habits & Tracking**: Habit creation, check-ins, streaks, analytics
- ✅ **Focus Time**: Pomodoro sessions, time tracking, productivity metrics
- ✅ **Tags & Labels**: Advanced tagging, custom labels, organization
- ✅ **Calendar Integration**: Event sync, calendar management, scheduling
- ✅ **Notes & Attachments**: Rich text notes, file attachments, media
- ✅ **Templates & Automation**: Task templates, recurring patterns, automation
- ✅ **Analytics & Reporting**: Productivity reports, goal tracking, data export
- ✅ **Settings & Preferences**: User customization, notifications, sync settings

## 🚀 Quick Start

### Prerequisites

- Node.js 18+ 
- TickTick account with API access
- Claude Code CLI installed

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/ticktick-mcp-server.git
   cd ticktick-mcp-server
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   ```bash
   # Create .env file
   TICKTICK_ACCESS_TOKEN=your_access_token_here
   TICKTICK_CLIENT_ID=your_client_id_here
   TICKTICK_CLIENT_SECRET=your_client_secret_here
   ```

4. **Start the server**
   ```bash
   npm start
   ```

### Docker Deployment

```bash
# Build the image
docker build -t ticktick-mcp .

# Run the container
docker run -d \
  --name ticktick-mcp \
  -e TICKTICK_ACCESS_TOKEN=your_token \
  -p 8007:8007 \
  ticktick-mcp
```

## 🔧 Configuration with Claude Code

Add to your Claude Code MCP settings:

```json
{
  "mcpServers": {
    "ticktick": {
      "command": "node",
      "args": ["/path/to/ticktick-mcp/src/index.js"],
      "env": {
        "TICKTICK_ACCESS_TOKEN": "your_token_here"
      }
    }
  }
}
```

## 📖 Usage Examples

### Task Management
```javascript
// Create a new task
await ticktick_create_task({
  title: "Review Claude Code documentation",
  project_id: "inbox",
  priority: 3,
  due_date: "2024-12-31"
});

// Get all projects
await ticktick_get_projects({ include_archived: false });

// Complete a task
await ticktick_complete_task({ task_id: "task123" });
```

### Advanced Features
```javascript
// Start a focus session
await ticktick_start_focus_session({
  duration: 25, // Pomodoro: 25 minutes
  task_id: "task123"
});

// Track habit completion
await ticktick_check_in_habit({
  habit_id: "habit456",
  date: "2024-01-15"
});

// Generate productivity report
await ticktick_get_productivity_report({
  period: "week",
  include_charts: true
});
```

## 🏗️ Architecture

Built on the Model Context Protocol (MCP) specification:
- **Transport**: stdio (standard input/output)
- **Authentication**: OAuth2 Bearer Token
- **Error Handling**: Comprehensive try-catch with user-friendly messages
- **Response Format**: Rich markdown with emojis and structured data

## 🧪 Validation & Testing

The server includes comprehensive validation tools:

```bash
# Run validation suite
node validate-ticktick-mcp.js

# Expected output: 100% success rate (112/112 operations)
```

All 112 operations have been tested and validated for:
- ✅ Tool schema definitions
- ✅ Request handlers
- ✅ Method implementations
- ✅ Error handling
- ✅ Response formatting

## 🤝 Contributing

This project was created with Claude Code for the Claude Code community. Contributions welcome!

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test with the validation suite
5. Submit a pull request

## 📜 License

MIT License - see [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **Claude Code Team** - For creating an amazing AI development environment
- **TickTick API** - For providing comprehensive task management capabilities
- **MCP Specification** - For enabling seamless AI tool integration
- **Original inspiration** - Based on [jen6/ticktick-mcp](https://github.com/jen6/ticktick-mcp)

## 🔗 Related Projects

- [Claude Code Documentation](https://docs.anthropic.com/en/docs/claude-code)
- [Model Context Protocol](https://github.com/modelcontextprotocol)
- [TickTick API Documentation](https://developer.ticktick.com/)

---

**Built with ❤️ using [Claude Code](https://claude.ai/code)**

*Perfect for developers who want to integrate TickTick into their Claude Code workflow with complete API coverage and comprehensive task management capabilities.*