.class Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ColorPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field final synthetic b:Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;->b:Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget p1, Lf7/b$i;->O1:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;->a:Landroid/view/View;

    .line 4
    new-instance p1, Liamutkarshtiwari/github/io/ananas/editimage/adapter/b;

    invoke-direct {p1, p0}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic b(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;->c(Landroid/view/View;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;->b:Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->d(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;)Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;->b:Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;

    invoke-static {p1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->d(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;)Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;

    move-result-object p1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$b;->b:Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;->e(Liamutkarshtiwari/github/io/ananas/editimage/adapter/a;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/a$a;->a(I)V

    :cond_0
    return-void
.end method
