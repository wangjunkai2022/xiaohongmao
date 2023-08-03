.class public final synthetic Lcom/google/android/exoplayer2/ui/w0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/google/android/exoplayer2/ui/y0;

.field public final synthetic b:Lcom/google/android/exoplayer2/ui/TrackSelectionView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplayer2/ui/y0;Lcom/google/android/exoplayer2/ui/TrackSelectionView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/ui/w0;->a:Lcom/google/android/exoplayer2/ui/y0;

    iput-object p2, p0, Lcom/google/android/exoplayer2/ui/w0;->b:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/ui/w0;->a:Lcom/google/android/exoplayer2/ui/y0;

    iget-object v1, p0, Lcom/google/android/exoplayer2/ui/w0;->b:Lcom/google/android/exoplayer2/ui/TrackSelectionView;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/exoplayer2/ui/y0;->b(Lcom/google/android/exoplayer2/ui/y0;Lcom/google/android/exoplayer2/ui/TrackSelectionView;Landroid/content/DialogInterface;I)V

    return-void
.end method
