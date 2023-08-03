.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c$a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c$a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/b;->a:I

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c$a;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/b;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/b;->a:I

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/b;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c$a;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/b;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c$a;->b(ILcom/qennnsad/aknkaksd/presentation/ui/room/player/player/adapter/c$a;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
