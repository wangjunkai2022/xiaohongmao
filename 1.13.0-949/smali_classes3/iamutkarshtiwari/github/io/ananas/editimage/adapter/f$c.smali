.class public Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "StickerTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Landroid/widget/ImageView;

.field public b:Landroid/widget/TextView;

.field final synthetic c:Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;


# direct methods
.method constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;->c:Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 3
    sget p1, Lf7/b$i;->L3:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;->a:Landroid/widget/ImageView;

    .line 4
    sget p1, Lf7/b$i;->j8:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$c;->b:Landroid/widget/TextView;

    return-void
.end method
