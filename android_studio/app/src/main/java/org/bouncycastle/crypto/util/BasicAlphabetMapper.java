package org.bouncycastle.crypto.util;

import androidx.core.view.MotionEventCompat;
import java.util.HashMap;
import java.util.Map;
import org.bouncycastle.crypto.AlphabetMapper;

/* loaded from: classes4.dex */
public class BasicAlphabetMapper implements AlphabetMapper {
    private Map<Integer, Character> charMap;
    private Map<Character, Integer> indexMap;

    public BasicAlphabetMapper(String str) {
        this(str.toCharArray());
    }

    public BasicAlphabetMapper(char[] cArr) {
        this.indexMap = new HashMap();
        this.charMap = new HashMap();
        for (int i4 = 0; i4 != cArr.length; i4++) {
            if (this.indexMap.containsKey(Character.valueOf(cArr[i4]))) {
                throw new IllegalArgumentException("duplicate key detected in alphabet: " + cArr[i4]);
            }
            this.indexMap.put(Character.valueOf(cArr[i4]), Integer.valueOf(i4));
            this.charMap.put(Integer.valueOf(i4), Character.valueOf(cArr[i4]));
        }
    }

    @Override // org.bouncycastle.crypto.AlphabetMapper
    public char[] convertToChars(byte[] bArr) {
        char[] cArr;
        int i4 = 0;
        if (this.charMap.size() <= 256) {
            cArr = new char[bArr.length];
            while (i4 != bArr.length) {
                cArr[i4] = this.charMap.get(Integer.valueOf(bArr[i4] & 255)).charValue();
                i4++;
            }
        } else if ((bArr.length & 1) != 0) {
            throw new IllegalArgumentException("two byte radix and input string odd length");
        } else {
            cArr = new char[bArr.length / 2];
            while (i4 != bArr.length) {
                cArr[i4 / 2] = this.charMap.get(Integer.valueOf(((bArr[i4] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK) | (bArr[i4 + 1] & 255))).charValue();
                i4 += 2;
            }
        }
        return cArr;
    }

    @Override // org.bouncycastle.crypto.AlphabetMapper
    public byte[] convertToIndexes(char[] cArr) {
        byte[] bArr;
        int i4 = 0;
        if (this.indexMap.size() <= 256) {
            bArr = new byte[cArr.length];
            while (i4 != cArr.length) {
                bArr[i4] = this.indexMap.get(Character.valueOf(cArr[i4])).byteValue();
                i4++;
            }
        } else {
            bArr = new byte[cArr.length * 2];
            while (i4 != cArr.length) {
                int intValue = this.indexMap.get(Character.valueOf(cArr[i4])).intValue();
                int i10 = i4 * 2;
                bArr[i10] = (byte) ((intValue >> 8) & 255);
                bArr[i10 + 1] = (byte) (intValue & 255);
                i4++;
            }
        }
        return bArr;
    }

    @Override // org.bouncycastle.crypto.AlphabetMapper
    public int getRadix() {
        return this.indexMap.size();
    }
}
