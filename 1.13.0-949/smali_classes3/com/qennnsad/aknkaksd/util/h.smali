.class public final synthetic Lcom/qennnsad/aknkaksd/util/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Le5/j0;

.field public final synthetic b:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Le5/j0;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/h;->a:Le5/j0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/h;->b:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/h;->a:Le5/j0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/h;->b:Landroid/app/Dialog;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/util/l;->i(Le5/j0;Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method
