.class public final Lcom/google/android/exoplayer2/text/span/f;
.super Ljava/lang/Object;
.source "TextEmphasisSpan.java"

# interfaces
.implements Lcom/google/android/exoplayer2/text/span/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/text/span/f$a;,
        Lcom/google/android/exoplayer2/text/span/f$b;
    }
.end annotation


# static fields
.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x0

.field public static final i:I = 0x1

.field public static final j:I = 0x2


# instance fields
.field public a:I

.field public b:I

.field public final c:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/text/span/f;->a:I

    .line 3
    iput p2, p0, Lcom/google/android/exoplayer2/text/span/f;->b:I

    .line 4
    iput p3, p0, Lcom/google/android/exoplayer2/text/span/f;->c:I

    return-void
.end method
