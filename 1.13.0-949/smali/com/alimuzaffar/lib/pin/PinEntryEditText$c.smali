.class Lcom/alimuzaffar/lib/pin/PinEntryEditText$c;
.super Ljava/lang/Object;
.source "PinEntryEditText.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimuzaffar/lib/pin/PinEntryEditText;->e(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$c;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$c;->a:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p1, 0x1

    return p1
.end method
