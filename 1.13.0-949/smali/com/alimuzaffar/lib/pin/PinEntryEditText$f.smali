.class Lcom/alimuzaffar/lib/pin/PinEntryEditText$f;
.super Ljava/lang/Object;
.source "PinEntryEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimuzaffar/lib/pin/PinEntryEditText;->a(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alimuzaffar/lib/pin/PinEntryEditText;


# direct methods
.method constructor <init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;I)V
    .locals 0

    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$f;->b:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iput p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 2
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$f;->b:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iget-object v0, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->k:[F

    iget v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$f;->a:I

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    .line 3
    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$f;->b:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->invalidate()V

    return-void
.end method
