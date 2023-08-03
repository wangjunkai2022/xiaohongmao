.class public final synthetic Lcom/qennnsad/aknkaksd/util/d0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;

.field public final synthetic b:Landroid/app/Dialog;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function0;Landroid/app/Dialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/d0;->a:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/d0;->b:Landroid/app/Dialog;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/d0;->a:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/d0;->b:Landroid/app/Dialog;

    invoke-static {v0, v1, p1}, Lcom/qennnsad/aknkaksd/util/e0;->a(Lkotlin/jvm/functions/Function0;Landroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method
