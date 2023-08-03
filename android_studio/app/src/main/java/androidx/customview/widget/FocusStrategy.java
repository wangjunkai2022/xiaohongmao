package androidx.customview.widget;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* loaded from: classes.dex */
class FocusStrategy {

    /* loaded from: classes.dex */
    public interface BoundsAdapter<T> {
        void obtainBounds(T t9, Rect rect);
    }

    /* loaded from: classes.dex */
    public interface CollectionAdapter<T, V> {
        V get(T t9, int i4);

        int size(T t9);
    }

    /* loaded from: classes.dex */
    private static class SequentialComparator<T> implements Comparator<T> {
        private final BoundsAdapter<T> mAdapter;
        private final boolean mIsLayoutRtl;
        private final Rect mTemp1 = new Rect();
        private final Rect mTemp2 = new Rect();

        SequentialComparator(boolean z9, BoundsAdapter<T> boundsAdapter) {
            this.mIsLayoutRtl = z9;
            this.mAdapter = boundsAdapter;
        }

        @Override // java.util.Comparator
        public int compare(T t9, T t10) {
            Rect rect = this.mTemp1;
            Rect rect2 = this.mTemp2;
            this.mAdapter.obtainBounds(t9, rect);
            this.mAdapter.obtainBounds(t10, rect2);
            int i4 = rect.top;
            int i10 = rect2.top;
            if (i4 < i10) {
                return -1;
            }
            if (i4 > i10) {
                return 1;
            }
            int i11 = rect.left;
            int i12 = rect2.left;
            if (i11 < i12) {
                return this.mIsLayoutRtl ? 1 : -1;
            } else if (i11 > i12) {
                return this.mIsLayoutRtl ? -1 : 1;
            } else {
                int i13 = rect.bottom;
                int i14 = rect2.bottom;
                if (i13 < i14) {
                    return -1;
                }
                if (i13 > i14) {
                    return 1;
                }
                int i15 = rect.right;
                int i16 = rect2.right;
                if (i15 < i16) {
                    return this.mIsLayoutRtl ? 1 : -1;
                } else if (i15 > i16) {
                    return this.mIsLayoutRtl ? -1 : 1;
                } else {
                    return 0;
                }
            }
        }
    }

    private FocusStrategy() {
    }

    private static boolean beamBeats(int i4, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        boolean beamsOverlap = beamsOverlap(i4, rect, rect2);
        if (beamsOverlap(i4, rect, rect3) || !beamsOverlap) {
            return false;
        }
        return !isToDirectionOf(i4, rect, rect3) || i4 == 17 || i4 == 66 || majorAxisDistance(i4, rect, rect2) < majorAxisDistanceToFarEdge(i4, rect, rect3);
    }

    private static boolean beamsOverlap(int i4, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i4 != 17) {
            if (i4 != 33) {
                if (i4 != 66) {
                    if (i4 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return rect2.right >= rect.left && rect2.left <= rect.right;
        }
        return rect2.bottom >= rect.top && rect2.top <= rect.bottom;
    }

    public static <L, T> T findNextFocusInAbsoluteDirection(@NonNull L l10, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t9, @NonNull Rect rect, int i4) {
        Rect rect2 = new Rect(rect);
        if (i4 == 17) {
            rect2.offset(rect.width() + 1, 0);
        } else if (i4 == 33) {
            rect2.offset(0, rect.height() + 1);
        } else if (i4 == 66) {
            rect2.offset(-(rect.width() + 1), 0);
        } else if (i4 == 130) {
            rect2.offset(0, -(rect.height() + 1));
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        T t10 = null;
        int size = collectionAdapter.size(l10);
        Rect rect3 = new Rect();
        for (int i10 = 0; i10 < size; i10++) {
            T t11 = collectionAdapter.get(l10, i10);
            if (t11 != t9) {
                boundsAdapter.obtainBounds(t11, rect3);
                if (isBetterCandidate(i4, rect, rect3, rect2)) {
                    rect2.set(rect3);
                    t10 = t11;
                }
            }
        }
        return t10;
    }

    public static <L, T> T findNextFocusInRelativeDirection(@NonNull L l10, @NonNull CollectionAdapter<L, T> collectionAdapter, @NonNull BoundsAdapter<T> boundsAdapter, @Nullable T t9, int i4, boolean z9, boolean z10) {
        int size = collectionAdapter.size(l10);
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            arrayList.add(collectionAdapter.get(l10, i10));
        }
        Collections.sort(arrayList, new SequentialComparator(z9, boundsAdapter));
        if (i4 != 1) {
            if (i4 == 2) {
                return (T) getNextFocusable(t9, arrayList, z10);
            }
            throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
        }
        return (T) getPreviousFocusable(t9, arrayList, z10);
    }

    private static <T> T getNextFocusable(T t9, ArrayList<T> arrayList, boolean z9) {
        int size = arrayList.size();
        int lastIndexOf = (t9 == null ? -1 : arrayList.lastIndexOf(t9)) + 1;
        if (lastIndexOf < size) {
            return arrayList.get(lastIndexOf);
        }
        if (!z9 || size <= 0) {
            return null;
        }
        return arrayList.get(0);
    }

    private static <T> T getPreviousFocusable(T t9, ArrayList<T> arrayList, boolean z9) {
        int size = arrayList.size();
        int indexOf = (t9 == null ? size : arrayList.indexOf(t9)) - 1;
        if (indexOf >= 0) {
            return arrayList.get(indexOf);
        }
        if (!z9 || size <= 0) {
            return null;
        }
        return arrayList.get(size - 1);
    }

    private static int getWeightedDistanceFor(int i4, int i10) {
        return (i4 * 13 * i4) + (i10 * i10);
    }

    private static boolean isBetterCandidate(int i4, @NonNull Rect rect, @NonNull Rect rect2, @NonNull Rect rect3) {
        if (isCandidate(rect, rect2, i4)) {
            if (isCandidate(rect, rect3, i4) && !beamBeats(i4, rect, rect2, rect3)) {
                return !beamBeats(i4, rect, rect3, rect2) && getWeightedDistanceFor(majorAxisDistance(i4, rect, rect2), minorAxisDistance(i4, rect, rect2)) < getWeightedDistanceFor(majorAxisDistance(i4, rect, rect3), minorAxisDistance(i4, rect, rect3));
            }
            return true;
        }
        return false;
    }

    private static boolean isCandidate(@NonNull Rect rect, @NonNull Rect rect2, int i4) {
        if (i4 == 17) {
            int i10 = rect.right;
            int i11 = rect2.right;
            return (i10 > i11 || rect.left >= i11) && rect.left > rect2.left;
        } else if (i4 == 33) {
            int i12 = rect.bottom;
            int i13 = rect2.bottom;
            return (i12 > i13 || rect.top >= i13) && rect.top > rect2.top;
        } else if (i4 == 66) {
            int i14 = rect.left;
            int i15 = rect2.left;
            return (i14 < i15 || rect.right <= i15) && rect.right < rect2.right;
        } else if (i4 == 130) {
            int i16 = rect.top;
            int i17 = rect2.top;
            return (i16 < i17 || rect.bottom <= i17) && rect.bottom < rect2.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    private static boolean isToDirectionOf(int i4, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i4 == 17) {
            return rect.left >= rect2.right;
        } else if (i4 == 33) {
            return rect.top >= rect2.bottom;
        } else if (i4 == 66) {
            return rect.right <= rect2.left;
        } else if (i4 == 130) {
            return rect.bottom <= rect2.top;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
    }

    private static int majorAxisDistance(int i4, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(0, majorAxisDistanceRaw(i4, rect, rect2));
    }

    private static int majorAxisDistanceRaw(int i4, @NonNull Rect rect, @NonNull Rect rect2) {
        int i10;
        int i11;
        if (i4 == 17) {
            i10 = rect.left;
            i11 = rect2.right;
        } else if (i4 == 33) {
            i10 = rect.top;
            i11 = rect2.bottom;
        } else if (i4 == 66) {
            i10 = rect2.left;
            i11 = rect.right;
        } else if (i4 == 130) {
            i10 = rect2.top;
            i11 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i10 - i11;
    }

    private static int majorAxisDistanceToFarEdge(int i4, @NonNull Rect rect, @NonNull Rect rect2) {
        return Math.max(1, majorAxisDistanceToFarEdgeRaw(i4, rect, rect2));
    }

    private static int majorAxisDistanceToFarEdgeRaw(int i4, @NonNull Rect rect, @NonNull Rect rect2) {
        int i10;
        int i11;
        if (i4 == 17) {
            i10 = rect.left;
            i11 = rect2.left;
        } else if (i4 == 33) {
            i10 = rect.top;
            i11 = rect2.top;
        } else if (i4 == 66) {
            i10 = rect2.right;
            i11 = rect.right;
        } else if (i4 == 130) {
            i10 = rect2.bottom;
            i11 = rect.bottom;
        } else {
            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
        }
        return i10 - i11;
    }

    private static int minorAxisDistance(int i4, @NonNull Rect rect, @NonNull Rect rect2) {
        if (i4 != 17) {
            if (i4 != 33) {
                if (i4 != 66) {
                    if (i4 != 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                }
            }
            return Math.abs((rect.left + (rect.width() / 2)) - (rect2.left + (rect2.width() / 2)));
        }
        return Math.abs((rect.top + (rect.height() / 2)) - (rect2.top + (rect2.height() / 2)));
    }
}
