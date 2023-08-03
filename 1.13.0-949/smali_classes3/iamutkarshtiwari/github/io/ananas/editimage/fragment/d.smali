.class public final synthetic Liamutkarshtiwari/github/io/ananas/editimage/fragment/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;


# direct methods
.method public synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/d;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/d;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;

    invoke-static {v0}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;->Z(Liamutkarshtiwari/github/io/ananas/editimage/fragment/g;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
