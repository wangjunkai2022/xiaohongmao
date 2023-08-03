.class public final synthetic Lcom/qennnsad/aknkaksd/util/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:I

.field public final synthetic c:Landroid/text/SpannableStringBuilder;

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Dialog;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/v;->a:Landroid/app/Dialog;

    iput p2, p0, Lcom/qennnsad/aknkaksd/util/v;->b:I

    iput-object p3, p0, Lcom/qennnsad/aknkaksd/util/v;->c:Landroid/text/SpannableStringBuilder;

    iput-boolean p4, p0, Lcom/qennnsad/aknkaksd/util/v;->d:Z

    iput p5, p0, Lcom/qennnsad/aknkaksd/util/v;->e:I

    iput-object p6, p0, Lcom/qennnsad/aknkaksd/util/v;->f:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 7

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/v;->a:Landroid/app/Dialog;

    iget v1, p0, Lcom/qennnsad/aknkaksd/util/v;->b:I

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/util/v;->c:Landroid/text/SpannableStringBuilder;

    iget-boolean v3, p0, Lcom/qennnsad/aknkaksd/util/v;->d:Z

    iget v4, p0, Lcom/qennnsad/aknkaksd/util/v;->e:I

    iget-object v5, p0, Lcom/qennnsad/aknkaksd/util/v;->f:Lkotlin/jvm/functions/Function0;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/qennnsad/aknkaksd/util/e0;->d(Landroid/app/Dialog;ILandroid/text/SpannableStringBuilder;ZILkotlin/jvm/functions/Function0;Landroid/content/DialogInterface;)V

    return-void
.end method
