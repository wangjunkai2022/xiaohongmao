.class public Lcom/tangxiaolv/telegramgallery/TL/c$a;
.super Lcom/tangxiaolv/telegramgallery/TL/c;
.source "DocumentAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tangxiaolv/telegramgallery/TL/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static n:I = 0x11b58939


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tangxiaolv/telegramgallery/TL/c;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Lcom/tangxiaolv/telegramgallery/TL/a;)V
    .locals 1

    sget v0, Lcom/tangxiaolv/telegramgallery/TL/c$a;->n:I

    invoke-virtual {p1, v0}, Lcom/tangxiaolv/telegramgallery/TL/a;->v(I)V

    return-void
.end method
