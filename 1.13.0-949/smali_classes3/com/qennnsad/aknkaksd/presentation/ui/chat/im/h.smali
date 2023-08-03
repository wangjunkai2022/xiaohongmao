.class public final Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/h;
.super Ljava/lang/Object;
.source "ChatViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/h;


# annotations
.annotation build Ldagger/internal/e;
.end annotation

.annotation build Ldagger/internal/r;
.end annotation

.annotation build Ldagger/internal/s;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/h<",
        "Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/h;
    .locals 1

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/h$a;->a()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/h;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;
    .locals 1

    new-instance v0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;

    invoke-direct {v0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;
    .locals 1

    invoke-static {}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/h;->c()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/h;->b()Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatViewModel;

    move-result-object v0

    return-object v0
.end method
