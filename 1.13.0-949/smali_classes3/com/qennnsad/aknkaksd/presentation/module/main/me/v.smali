.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/module/main/me/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;


# direct methods
.method public synthetic constructor <init>(Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/v;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/v;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/v;->a:Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/module/main/me/v;->b:Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;->d(Lcom/qennnsad/aknkaksd/presentation/module/main/me/w;Lcom/qennnsad/aknkaksd/presentation/module/main/me/w$a;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
