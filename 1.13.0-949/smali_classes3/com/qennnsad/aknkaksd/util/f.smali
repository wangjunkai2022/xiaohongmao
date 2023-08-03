.class public final synthetic Lcom/qennnsad/aknkaksd/util/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Landroid/app/AlertDialog;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/app/AlertDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/f;->a:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/f;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/f;->a:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/f;->b:Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/util/l;->g(Landroid/app/AlertDialog;Ljava/util/List;Landroid/content/DialogInterface;)V

    return-void
.end method
