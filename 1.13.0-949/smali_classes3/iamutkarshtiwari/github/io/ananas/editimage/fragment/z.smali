.class public final synthetic Liamutkarshtiwari/github/io/ananas/editimage/fragment/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

.field public final synthetic b:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/z;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    iput-object p2, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/z;->b:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/z;->a:Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;

    iget-object v1, p0, Liamutkarshtiwari/github/io/ananas/editimage/fragment/z;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;->Y(Liamutkarshtiwari/github/io/ananas/editimage/fragment/e0;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
