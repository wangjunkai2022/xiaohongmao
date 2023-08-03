.class Leltos/simpledialogfragment/form/a$b;
.super Ljava/lang/Object;
.source "CheckViewHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Leltos/simpledialogfragment/form/a;->a(Leltos/simpledialogfragment/form/g$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leltos/simpledialogfragment/form/g$c;

.field final synthetic b:Leltos/simpledialogfragment/form/a;


# direct methods
.method constructor <init>(Leltos/simpledialogfragment/form/a;Leltos/simpledialogfragment/form/g$c;)V
    .locals 0

    iput-object p1, p0, Leltos/simpledialogfragment/form/a$b;->b:Leltos/simpledialogfragment/form/a;

    iput-object p2, p0, Leltos/simpledialogfragment/form/a$b;->a:Leltos/simpledialogfragment/form/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/form/a$b;->b:Leltos/simpledialogfragment/form/a;

    invoke-static {v0}, Leltos/simpledialogfragment/form/a;->h(Leltos/simpledialogfragment/form/a;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setFocusable(Z)V

    .line 2
    iget-object v0, p0, Leltos/simpledialogfragment/form/a$b;->a:Leltos/simpledialogfragment/form/g$c;

    invoke-virtual {v0}, Leltos/simpledialogfragment/form/g$c;->a()V

    return-void
.end method
