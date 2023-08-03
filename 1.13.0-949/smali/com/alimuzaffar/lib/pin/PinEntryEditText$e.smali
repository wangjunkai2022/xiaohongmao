.class Lcom/alimuzaffar/lib/pin/PinEntryEditText$e;
.super Ljava/lang/Object;
.source "PinEntryEditText.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimuzaffar/lib/pin/PinEntryEditText;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;


# direct methods
.method constructor <init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V
    .locals 0

    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$e;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$e;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iget-object v0, p1, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->s:Lcom/alimuzaffar/lib/pin/PinEntryEditText$i;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$i;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
