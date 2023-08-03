.class Lcom/hbb20/CountryCodePicker$a;
.super Ljava/lang/Object;
.source "CountryCodePicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hbb20/CountryCodePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hbb20/CountryCodePicker;


# direct methods
.method constructor <init>(Lcom/hbb20/CountryCodePicker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$a;->a:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$a;->a:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$a;->a:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->s()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$a;->a:Lcom/hbb20/CountryCodePicker;

    iget-boolean v0, p1, Lcom/hbb20/CountryCodePicker;->L:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->getSelectedCountryNameCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/hbb20/CountryCodePicker;->F(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->E()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$a;->a:Lcom/hbb20/CountryCodePicker;

    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->a(Lcom/hbb20/CountryCodePicker;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
