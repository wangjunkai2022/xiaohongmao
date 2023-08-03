.class Leltos/simpledialogfragment/form/f$a$a;
.super Ljava/lang/Object;
.source "InputViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/f$a;->onFocusChange(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/f$a;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/f$a;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/f$a$a;->a:Leltos/simpledialogfragment/form/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/f$a$a;->a:Leltos/simpledialogfragment/form/f$a;

    iget-object v0, v0, Leltos/simpledialogfragment/form/f$a;->a:Leltos/simpledialogfragment/form/f;

    invoke-static {v0}, Leltos/simpledialogfragment/form/f;->h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelectAllOnFocus(Z)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/form/f$a$a;->a:Leltos/simpledialogfragment/form/f$a;

    iget-object v0, v0, Leltos/simpledialogfragment/form/f$a;->a:Leltos/simpledialogfragment/form/f;

    invoke-static {v0}, Leltos/simpledialogfragment/form/f;->h(Leltos/simpledialogfragment/form/f;)Leltos/simpledialogfragment/input/TextInputAutoCompleteTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method
