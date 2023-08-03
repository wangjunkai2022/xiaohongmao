.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/e;->a:Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;->x0(Lcom/qennnsad/aknkaksd/presentation/ui/chat/im/ChatFragment;Ljava/util/List;)V

    return-void
.end method
