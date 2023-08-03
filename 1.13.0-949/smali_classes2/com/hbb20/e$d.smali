.class Lcom/hbb20/e$d;
.super Ljava/lang/Object;
.source "CountryCodeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hbb20/e;->g(Lcom/hbb20/e$e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/hbb20/e;


# direct methods
.method constructor <init>(Lcom/hbb20/e;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$i"
        }
    .end annotation

    iput-object p1, p0, Lcom/hbb20/e$d;->b:Lcom/hbb20/e;

    iput p2, p0, Lcom/hbb20/e$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hbb20/e$d;->b:Lcom/hbb20/e;

    iget-object v0, v0, Lcom/hbb20/e;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/hbb20/e$d;->a:I

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hbb20/e$d;->b:Lcom/hbb20/e;

    iget-object v2, v0, Lcom/hbb20/e;->d:Lcom/hbb20/CountryCodePicker;

    iget-object v0, v0, Lcom/hbb20/e;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hbb20/b;

    invoke-virtual {v2, v0}, Lcom/hbb20/CountryCodePicker;->H(Lcom/hbb20/b;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hbb20/e$d;->b:Lcom/hbb20/e;

    iget-object v0, v0, Lcom/hbb20/e;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/hbb20/e$d;->a:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/hbb20/e$d;->b:Lcom/hbb20/e;

    iget-object v0, v0, Lcom/hbb20/e;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/hbb20/e$d;->b:Lcom/hbb20/e;

    iget-object v0, v0, Lcom/hbb20/e;->h:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 6
    iget-object p1, p0, Lcom/hbb20/e$d;->b:Lcom/hbb20/e;

    iget-object p1, p1, Lcom/hbb20/e;->g:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method
