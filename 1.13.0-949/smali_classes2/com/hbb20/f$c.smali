.class Lcom/hbb20/f$c;
.super Ljava/lang/Object;
.source "CountryCodeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/f;->f(Lcom/hbb20/CountryCodePicker;Ljava/lang/String;)V
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
            0x1010
        }
        names = {
            "val$codePicker"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/f$c;->a:Lcom/hbb20/CountryCodePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogInterface"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hbb20/f;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/hbb20/f;->a(Landroid/content/Context;)V

    .line 2
    iget-object v0, p0, Lcom/hbb20/f$c;->a:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/hbb20/f$c;->a:Lcom/hbb20/CountryCodePicker;

    invoke-virtual {v0}, Lcom/hbb20/CountryCodePicker;->getDialogEventsListener()Lcom/hbb20/CountryCodePicker$f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/hbb20/CountryCodePicker$f;->c(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
