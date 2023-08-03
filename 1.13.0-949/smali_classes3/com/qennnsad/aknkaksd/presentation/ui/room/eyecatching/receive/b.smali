.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/b;->b:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/b;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/b;->b:Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a$b;->b(Lcom/qennnsad/aknkaksd/presentation/ui/room/eyecatching/receive/a;Lcom/qennnsad/aknkaksd/data/bean/room/eyecatching/PinnedMessageBean;Landroid/view/View;)V

    return-void
.end method
