.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/room/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;Lcom/qennnsad/aknkaksd/presentation/ui/room/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/a;->a:Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/room/b;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/b;->d(Lcom/qennnsad/aknkaksd/presentation/ui/room/b$a;Lcom/qennnsad/aknkaksd/presentation/ui/room/b;Landroid/view/View;)V

    return-void
.end method
