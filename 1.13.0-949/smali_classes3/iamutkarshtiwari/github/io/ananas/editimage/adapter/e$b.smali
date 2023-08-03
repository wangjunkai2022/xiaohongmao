.class final Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;
.super Ljava/lang/Object;
.source "StickerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;


# direct methods
.method private constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e$b;->a:Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;->d(Liamutkarshtiwari/github/io/ananas/editimage/adapter/e;)Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;

    move-result-object v0

    invoke-virtual {v0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/m0;->o0(Ljava/lang/String;)V

    return-void
.end method
