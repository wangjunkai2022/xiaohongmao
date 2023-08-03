.class public abstract Leltos/simpledialogfragment/list/a$a;
.super Landroid/widget/Filter;
.source "AdvancedAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leltos/simpledialogfragment/list/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/CharSequence;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/util/regex/Pattern;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Z

.field private d:Z

.field final synthetic e:Leltos/simpledialogfragment/list/a;


# direct methods
.method public constructor <init>(Leltos/simpledialogfragment/list/a;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v0}, Leltos/simpledialogfragment/list/a$a;-><init>(Leltos/simpledialogfragment/list/a;ZZ)V

    return-void
.end method

.method public constructor <init>(Leltos/simpledialogfragment/list/a;ZZ)V
    .locals 0

    .line 2
    iput-object p1, p0, Leltos/simpledialogfragment/list/a$a;->e:Leltos/simpledialogfragment/list/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    .line 3
    iput-boolean p2, p0, Leltos/simpledialogfragment/list/a$a;->c:Z

    .line 4
    iput-boolean p3, p0, Leltos/simpledialogfragment/list/a$a;->d:Z

    return-void
.end method

.method static synthetic a(Leltos/simpledialogfragment/list/a$a;)Ljava/util/regex/Pattern;
    .locals 0

    iget-object p0, p0, Leltos/simpledialogfragment/list/a$a;->b:Ljava/util/regex/Pattern;

    return-object p0
.end method


# virtual methods
.method protected b()Z
    .locals 1

    iget-boolean v0, p0, Leltos/simpledialogfragment/list/a$a;->c:Z

    return v0
.end method

.method protected c()Z
    .locals 1

    iget-boolean v0, p0, Leltos/simpledialogfragment/list/a$a;->d:Z

    return v0
.end method

.method protected abstract d(Ljava/lang/Object;Ljava/lang/CharSequence;)Z
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/CharSequence;",
            ")Z"
        }
    .end annotation
.end method

.method protected e(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Leltos/simpledialogfragment/list/a$a;->b:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected f(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 3
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Leltos/simpledialogfragment/list/a$a;->d:Z

    if-eqz v2, :cond_0

    const-string v2, "\\b"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-boolean v1, p0, Leltos/simpledialogfragment/list/a$a;->c:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 3
    :goto_1
    invoke-static {p2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Leltos/simpledialogfragment/list/a$a;->a:Ljava/lang/CharSequence;

    if-eqz p1, :cond_5

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Leltos/simpledialogfragment/list/a$a;->d:Z

    if-eqz v1, :cond_1

    const-string v1, "\\b"

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Leltos/simpledialogfragment/list/a$a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-boolean v1, p0, Leltos/simpledialogfragment/list/a$a;->c:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 5
    :goto_1
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Leltos/simpledialogfragment/list/a$a;->b:Ljava/util/regex/Pattern;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v1, p0, Leltos/simpledialogfragment/list/a$a;->e:Leltos/simpledialogfragment/list/a;

    invoke-static {v1}, Leltos/simpledialogfragment/list/a;->a(Leltos/simpledialogfragment/list/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Leltos/simpledialogfragment/list/a$b;

    .line 8
    iget-object v3, v2, Leltos/simpledialogfragment/list/a$b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v3, p1}, Leltos/simpledialogfragment/list/a$a;->d(Ljava/lang/Object;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10
    :cond_4
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 11
    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1

    :cond_5
    :goto_3
    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Leltos/simpledialogfragment/list/a$a;->b:Ljava/util/regex/Pattern;

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1
    .param p2    # Landroid/widget/Filter$FilterResults;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Leltos/simpledialogfragment/list/a$a;->e:Leltos/simpledialogfragment/list/a;

    invoke-static {v0, p1}, Leltos/simpledialogfragment/list/a;->b(Leltos/simpledialogfragment/list/a;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 2
    iget-object p1, p0, Leltos/simpledialogfragment/list/a$a;->e:Leltos/simpledialogfragment/list/a;

    invoke-static {p1}, Leltos/simpledialogfragment/list/a;->c(Leltos/simpledialogfragment/list/a;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Leltos/simpledialogfragment/list/a$a;->e:Leltos/simpledialogfragment/list/a;

    invoke-static {p1}, Leltos/simpledialogfragment/list/a;->c(Leltos/simpledialogfragment/list/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p2, Ljava/util/Collection;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Leltos/simpledialogfragment/list/a$a;->e:Leltos/simpledialogfragment/list/a;

    invoke-static {p1}, Leltos/simpledialogfragment/list/a;->c(Leltos/simpledialogfragment/list/a;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object p2, p0, Leltos/simpledialogfragment/list/a$a;->e:Leltos/simpledialogfragment/list/a;

    invoke-static {p2}, Leltos/simpledialogfragment/list/a;->a(Leltos/simpledialogfragment/list/a;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6
    :goto_0
    iget-object p1, p0, Leltos/simpledialogfragment/list/a$a;->e:Leltos/simpledialogfragment/list/a;

    invoke-virtual {p1}, Leltos/simpledialogfragment/list/a;->notifyDataSetChanged()V

    .line 7
    iget-object p1, p0, Leltos/simpledialogfragment/list/a$a;->e:Leltos/simpledialogfragment/list/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Leltos/simpledialogfragment/list/a;->d(Leltos/simpledialogfragment/list/a;Z)Z

    return-void
.end method
