.class Lcom/hbb20/CountryCodePicker$c;
.super Ljava/lang/Object;
.source "CountryCodePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/CountryCodePicker;->b0()V
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

    iput-object p1, p0, Lcom/hbb20/CountryCodePicker$c;->a:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$c;->a:Lcom/hbb20/CountryCodePicker;

    invoke-static {p1}, Lcom/hbb20/CountryCodePicker;->d(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CountryCodePicker$i;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/hbb20/CountryCodePicker$c;->a:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {p1}, Lcom/hbb20/CountryCodePicker;->D()Z

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$c;->a:Lcom/hbb20/CountryCodePicker;

    iget-boolean v1, v0, Lcom/hbb20/CountryCodePicker;->J2:Z

    if-eq p1, v1, :cond_0

    .line 4
    iput-boolean p1, v0, Lcom/hbb20/CountryCodePicker;->J2:Z

    .line 5
    invoke-static {v0}, Lcom/hbb20/CountryCodePicker;->d(Lcom/hbb20/CountryCodePicker;)Lcom/hbb20/CountryCodePicker$i;

    move-result-object p1

    iget-object v0, p0, Lcom/hbb20/CountryCodePicker$c;->a:Lcom/hbb20/CountryCodePicker;

    iget-boolean v0, v0, Lcom/hbb20/CountryCodePicker;->J2:Z

    invoke-interface {p1, v0}, Lcom/hbb20/CountryCodePicker$i;->a(Z)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    return-void
.end method
