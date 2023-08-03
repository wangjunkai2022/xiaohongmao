.class public final synthetic Lcom/qennnsad/aknkaksd/util/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Le5/o0;

.field public final synthetic b:Lkotlin/jvm/functions/Function1;

.field public final synthetic c:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Le5/o0;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/i;->a:Le5/o0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/i;->b:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/i;->c:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/i;->a:Le5/o0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/i;->b:Lkotlin/jvm/functions/Function1;

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/i;->c:Landroid/app/Dialog;

    invoke-static {v0, v1, v2, p1}, Lcom/qennnsad/aknkaksd/util/l;->c(Le5/o0;Lkotlin/jvm/functions/Function1;Landroid/app/Dialog;Landroid/content/DialogInterface;)V

    return-void
.end method
