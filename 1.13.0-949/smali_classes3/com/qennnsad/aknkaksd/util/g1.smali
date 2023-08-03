.class public final synthetic Lcom/qennnsad/aknkaksd/util/g1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qennnsad/aknkaksd/util/g1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/qennnsad/aknkaksd/util/g1;->b:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/util/g1;->a:Landroid/view/View;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/util/g1;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Lcom/qennnsad/aknkaksd/util/h1;->a(Landroid/view/View;Landroid/view/inputmethod/InputMethodManager;)V

    return-void
.end method
