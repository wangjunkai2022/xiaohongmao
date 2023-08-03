.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/TextView;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/TextView;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/a;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/a;->b:Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;->U(Landroid/widget/TextView;Lcom/qennnsad/aknkaksd/presentation/ui/widget/userinfo/BaseUserInfoDialog;Landroid/view/View;)Z

    move-result p1

    return p1
.end method
