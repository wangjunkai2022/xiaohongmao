.class final Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$d;
.super Ljava/lang/Object;
.source "EditImageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;


# direct methods
.method private constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$d;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$d;-><init>(Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity$d;->a:Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;

    iget v0, p1, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->B:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->A0()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Liamutkarshtiwari/github/io/ananas/editimage/EditImageActivity;->f0()V

    :goto_0
    return-void
.end method
