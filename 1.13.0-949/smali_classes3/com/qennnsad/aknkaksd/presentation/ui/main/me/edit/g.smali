.class public final synthetic Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Le5/w;

.field public final synthetic b:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

.field public final synthetic c:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Le5/w;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/g;->a:Le5/w;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/g;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/g;->c:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/g;->a:Le5/w;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/g;->b:Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/g;->c:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;->x0(Le5/w;Lcom/qennnsad/aknkaksd/presentation/ui/main/me/edit/EditProfileFragment;Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method
