.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;


# direct methods
.method public synthetic constructor <init>(ZLcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/f;->a:Z

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/f;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-boolean v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/f;->a:Z

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/f;->b:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;->U(ZLcom/qennnsad/aknkaksd/presentation/ui/chat/im/chat_requests/g;)V

    return-void
.end method
