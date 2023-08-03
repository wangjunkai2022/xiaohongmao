.class final Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;
.super Ljava/lang/Object;
.source "StickerTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;


# direct methods
.method private constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget v0, Lf7/b$i;->K3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    sget v1, Lf7/b$i;->J3:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;

    invoke-static {v1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;->d(Liamutkarshtiwari/github/io/ananas/editimage/adapter/f;)Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->p0(Ljava/lang/String;I)V

    return-void
.end method
